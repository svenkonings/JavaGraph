import groove.graph.GraphRole;

//available vars:
//simulator
//simulatorModel
//manager <- Most useful for new graphs etc

graph = manager.createGraph("GroovyBridge", GraphRole.HOST);


def parabola(x) {
	while(x > 5)
		x -= 10;
	x /= 5;
	def x2 = (x)*(x);
	return x2;
}

def length = 20;
def height = 5;
def res = 3;
def scale = 40;

def prevnode = null;
def prevnodeRoad = null;
1.upto(length*res){
	dist = it/res;
	y = parabola(dist);
	node = manager.createNode(graph, "type:n", new java.awt.Point((Integer)dist*scale,-((Integer)y*height*scale) + 400));
	nodeRoad = manager.createNode(graph, "type:r", new java.awt.Point((Integer)dist*scale,420));
	if (prevnode != null) {
		manager.createEdge(graph, prevnode, node, "e");
	}
	prevnode = node;
	
	manager.createEdge(graph, node, nodeRoad, "e");
	if (prevnodeRoad != null) {
		manager.createEdge(graph, prevnodeRoad, nodeRoad, "e");
		
	}
	prevnodeRoad = nodeRoad;
	
}

manager.doneGraph(graph);
