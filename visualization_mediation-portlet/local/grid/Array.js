Ext.onReady(function(){
	var arrayData = [                                                     
	                 ['Jay Garcia',    'MD'],
	                 ['Aaron Baker',   'VA'],
	                 ['Susan Smith',   'DC'],
	                 ['Mary Stein',    'DE'],
	                 ['Bryan Shanley', 'NJ'],
	                 ['Nyri Selgado',  'CA']
	                 ];
	var nameRecord = Ext.data.Record.create([         
        {  name : 'res',  mapping : 0 },
		{  name : 'state', mapping : 1  }
	]);    
	
	var jsonText = '{"list": [{"res": "cdc_112", "state": "20", "tags": "envision, simple-use-case"},    {"res": "cdc_111", "state": "20", "tags": "envision, simple-use-case"},    {"res": "sos", "state": "20", "tags": "envision, simple-use-case"}   ]}';
	var data = Ext.util.JSON.decode(jsonText);
	var memoryProxy = new Ext.data.MemoryProxy(data);
	
	var jsonReader = new Ext.data.JsonReader({
		root: "list"}, [
	    {name: 'res', type: 'string'},
	    {name: 'state',	type: 'string'},
	    {name: 'tags',	type: 'string'}
	    ]);
         

	var strTweets = new Ext.data.Store({                                    
		reader : jsonReader,
		proxy  : memoryProxy
	});

	strTweets.load(); 



	var tplTweets = new Ext.XTemplate(
			'<tpl for=".">',
			'<div class="tweetbox">{res}</div>',
			'{state}',
			'</tpl>',
			'<div class="x-clear"></div>'
	);

	var dataTweets = new Ext.DataView({
		autoScroll: true, 
		store: strTweets, 
		tpl: tplTweets,
		autoHeight: false, 
		height: 265,
		multiSelect: true, 
		itemSelector: 'div.thumb-wrap',
		emptyText: 'No tweets to display',
		style: 'border:1px solid #99BBE8;background:#fff;'
	});

	var panelBottom = new Ext.Panel({
		title: 'Resources', 
		frame: true, 
		width: 400,
		height: 300, 
		id: 'panelBottom', 
		style: 'margin: 2 auto;',
		renderTo: 'bottom', 
		items: [dataTweets]
	});


});