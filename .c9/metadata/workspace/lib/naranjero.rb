{"filter":false,"title":"naranjero.rb","tooltip":"/lib/naranjero.rb","undoManager":{"mark":9,"position":9,"stack":[[{"group":"doc","deltas":[{"start":{"row":13,"column":0},"end":{"row":45,"column":0},"action":"insert","lines":["\t","\tdef uno_mas\t","\t\tif @edad <= @max_edad","\t\t\t@edad += 1","\t\t\t@altura += 0.5","\t\t\tif @edad.between?(4,10)","\t\t\t\t@mutex.synchronize { @naranjas += 5\t}","\t\t\t\t@produccion << 5","\t\t\telsif @edad.between?(11,20)","\t\t\t\t@mutex.synchronize { @naranjas += 8 }","\t\t\t\t@produccion << 8","\t\t\tend","\t\telse","\t\t\t@mutex.synchronize { @naranjas = 0 }","\t\t\t@altura = 0","\t\tend","\tend","","\tdef recolectar_una","\t\tif @naranjas > 0","\t\t\t@mutex.synchronize { @naranjas -= 1 }","\t\tend","\t\tif @edad >= @max_edad","\t\t\t@mutex.synchronize { @naranjas = 0 }","\t\t\tputs \"El naranjo ha muerto.\"","\t\telsif @naranjas == 0","\t\t\tputs \"No hay naranjas.\"","\t\telse","\t\t\tputs \"Estaba muy rica.\"","\t\tend","\tend","end\t",""]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":2},"end":{"row":46,"column":3},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":1},"end":{"row":46,"column":2},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":0},"end":{"row":46,"column":1},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":4},"end":{"row":46,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":3},"end":{"row":45,"column":4},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":2},"end":{"row":45,"column":3},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":1},"end":{"row":45,"column":2},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":0},"end":{"row":45,"column":1},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":44,"column":4},"end":{"row":45,"column":0},"action":"remove","lines":["",""]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":24},"end":{"row":3,"column":24},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1418838158078,"hash":"d221ffd1dcdb7a6d9ed7be30b25488f1b6e7ca1c"}