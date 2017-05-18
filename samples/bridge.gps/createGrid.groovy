import groove.graph.GraphRole;

//available vars:
//simulator
//simulatorModel
//manager <- Most useful for new graphs etc

dialog = groove.gui.dialog.StringDialog.createStringDialog("Enter name for the grid");
name = dialog.showDialog();
if (name == null)
	return;

graph = manager.createGraph(name, GraphRole.HOST);

offset = 80;
grid = [];
gridsize = 8;

1.upto(gridsize){
	x = it;
	row = [];
	1.upto(gridsize){
		y = it;
		black = ((x%2!=0) ^ (y%2!=0));
		if (black)
			node = manager.createNode(graph, "type:Square\nflag:black", new java.awt.Point(x*offset,y*offset));
		else
			node = manager.createNode(graph, "type:Square\nflag:white", new java.awt.Point(x*offset,y*offset));
		row << node;		
	}
	grid << row;
}

1.upto(gridsize-1) {
	row = grid[it-1];
	nextrow = grid[it];
	1.upto(gridsize-1) {
		manager.createEdge(graph, row[it-1], row[it], "edge");
		manager.createEdge(graph, row[it-1], nextrow[it-1], "edge");
	}
	manager.createEdge(graph, row[gridsize-1], nextrow[gridsize-1], "edge");

}
1.upto(gridsize-1) {
	lastrow = grid[gridsize-1];
	manager.createEdge(graph, lastrow[it-1], lastrow[it], "edge");
}

manager.doneGraph(graph);
