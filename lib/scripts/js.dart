final String js = """
  var resultObj = {};
  function tableToArray(div) {
  if (!div || (div.getElementsByTagName("table").length == 0) ){
    resultObj.exists = false;
    resultObj.noodds = true;
    resultObj.rows = [];
    return resultObj;
  }
  var hand = false;
    
  var table = div.getElementsByTagName("table")[0];
  var noOdds = Array.prototype.slice.apply( document.getElementsByClassName("cms") ).filter((div) => div.innerText === "There are no odds available for this event.");
  if (noOdds.length > 0){
    resultObj.exists = true;
    resultObj.noodds = true;
    resultObj.rows = [];
    return resultObj;
  }
  var rows = table.rows;
  var cells, t;
  resultObj.rows = [];

  // Iterate over rows
  for (var i=0, iLen=rows.length; i<iLen; i++) {
    cells = rows[i].cells;
    var row = {};
    row.cells = [];

    // Iterate over cells
    for (var j=0, jLen=cells.length; j<jLen; j++) {
        if (hand && j == 1){continue;}
        var href = "";
        var text = "";
        var uod = "";
        var  deactivated = false;
        var cell = {};

        var div = cells[j].getElementsByTagName("div");
        if((div.length > 0) && (div[0].classList.contains("deactivateOdd"))){deactivated=true;}

        if (cells[j].classList.contains("right")){
            var a = cells[j].getElementsByTagName("a");
            if(a.length>0){
                var splited = a[0].href.split("/");
                href = splited[splited.length-1];
            }

        }
        if (cells[j].classList.contains("up")){
            uod = "u";
        } else if (cells[j].classList.contains("down")){
            uod = "d";
        }  else if (cells[j].classList.contains("down-dark")){
            uod = "dd";
        }  else if (cells[j].classList.contains("up-dark")){
            uod = "ud";
        }

        if(cells[j].textContent.includes("Payout")){continue}
        if(cells[j].textContent.includes("%")){continue}
        if(cells[j].textContent){
            var t = cells[j].textContent.trim();
            if ((t === "Handicap") || (t === "Hand")|| (t === "Hand.")){
                hand = true;
                continue;
            }
            cell.text = t;
            cell.href = href;
            cell.uod = uod;
            cell.deactivated = deactivated;
            row.cells.push(cell);
        }
    }
    if(cells.length == 0){break;}
    resultObj.rows.push(row);
  }
  resultObj.noodds = false;
  resultObj.exists = true;
  return resultObj;
}

tableToArray(document.getElementById("odds-data-table"));
""";
