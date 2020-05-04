function duplicateCount(text){
  const array = text.toLowerCase().split("")
  let counts = {},
  duplicate = 0;
  array.forEach(function(x) {
    counts[x] = (counts[x] || 0) + 1;
  });

  for (let key in counts) {
    if (counts.hasOwnProperty(key)) {
      counts[key] > 1 ? duplicate++ : duplicate;
    }
  }
  return duplicate;
}
