ArrayList<Mover> movers;
int numberOfMovers = 50;
color blue = #5987D1;


void setup() {
  
  size(800,800);
  movers = new ArrayList();
  
  int i = 0;
  while (i < numberOfMovers) {
  movers.add(new Mover());
  i++;
  }

}

void draw() {
  background(blue);
  int i = 0;
  while (i < movers.size()) {
    Mover m = movers.get(i);
    m.act();
    m.showBody();
    m.showConnections();
    if (m.alive == false) {
      movers.remove(i);
    } else {
    i++;
    }
  }

}

void mouseReleased() {

}
