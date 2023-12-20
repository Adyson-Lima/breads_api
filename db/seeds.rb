puts 'gerando breads...'
5.times do |i|
  Bread.create(name: ['frances', 'hamburger', 'doce'].sample, price: 'preço tabelado')
end
puts 'breads gerados com sucesso!'