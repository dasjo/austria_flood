Map {
  background-color: #eeebeb;
}

#waterway {
  line-width:1;
  line-color:#137da7;
  line-opacity: 0.7;
}
#waterway[zoom>=10] {
  line-width:2;
}
#waterway[zoom>=14] {
  line-width:3;
}

@jahr: 'HQ30';

#floodarea-oo[HQ_SZ_DESC=@jahr] {
  polygon-opacity:0.6;
  polygon-fill:#ff935e;
}

/*
#schlaglinien-oo[HQ_SZ_DESC=@jahr] {
  line-width:1;
  line-color:#f0be6d;
  line-opacity: 0.5;
  [zoom>=18] {
    line-width:2;
  }
}
*/


#hwrisk-oo {
  polygon-opacity:0.6;
  line-width:0.5;
  line-opacity: 0.6;
  line-width:1;
  line-color: #999;
  polygon-fill: #999;
  [Art='Blaue Zone'] {
    polygon-fill:blue;
    line-color:blue;
  }
  [Art='Gelbe Zone'] {
    polygon-fill:yellow;
    line-color:yellow;
  }
  [Art='GelbRote Zone'] {
    polygon-fill:#ff6600;
    line-color:#ff6600;
  }
  [Art='Rote Zone'] {
    polygon-fill:red;
    line-color:red;
  }
  [zoom>=12] {
    line-width:0.5;
    line-color:#4d4547;
  }
  [zoom>=14] {
    line-width:1;
  }
}

// more

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 3;
    line-join: round;
  }
  polygon-fill: #fff;
}
