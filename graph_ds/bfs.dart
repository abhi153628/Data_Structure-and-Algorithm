import 'dart:collection';

class Graph{
  Map<int,List<int>>map={};

  addedges(int u,int v){
    if (map[u]==null) {
      map[u]=[];

      
    }map[u]!.add(v);


  }
void bfs(int start){
  Queue queue=Queue();
  Set visited={};
  queue.add(start);
  visited.add(start);
  while (queue.isNotEmpty) {
    int node=queue.removeFirst();
    print(node);
    map[node]?.forEach((neighbor) {
      if(!visited.contains(neighbor)){
        visited.add(neighbor);
        queue.add(neighbor);

      }
      
    });

    
  }


}
}
void main(){
  Graph gra=Graph();
  gra.addedges(3, 4);
  gra.addedges(5, 7);
  gra.bfs(3);
}