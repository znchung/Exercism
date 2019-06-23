export const value = (colorInputs) => {
  var totalString = ""

  for (var i of colorInputs) {
    totalString += `${COLORS.indexOf(i)}`
  }

  return parseInt(totalString)
};

const COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];



