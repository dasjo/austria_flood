Map {
  background-color: #eeebeb;
}

#waterway {
  line-width:1;
  line-color:#168;
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


#schlaglinien-oo[HQ_SZ_DESC=@jahr] {
  line-width:1;
  line-color:#f0be6d;
  line-opacity: 0.5;
}
#schlaglinien-oo[zoom>=18] {
  line-width:2;
}


#hwrisk-oo {
  polygon-opacity:0.6;
  line-color:#e9a;
  line-width:0.5;
  line-opacity: 0.6;
  [Art='Blaue Zone'] {
    polygon-fill:blue;
  }
  [Art='Gelbe Zone'] {
    polygon-fill:yellow;
  }
  [Art='GelbRote Zone'] {
    polygon-fill:#ff6600;
  }
  [Art='Rote Zone'] {
    polygon-fill:red;
  }
}
#hwrisk-oo[zoom>=12] {
  line-width:1;
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
