Dado("que eu esteja no site") do
  visit("https://www.casasbahia.com.br/")
end

Dado("clico no menu") do
  assert_selector("#lnkCadastreSe", wait: 5)
  find("#lnkCadastreSe").click
end

Dado("Clico em não possuo cadastro") do
  assert_selector("#rbNaoCadastrado", wait: 5)
  find("#rbNaoCadastrado").click
  find("#btnClienteLogin").click
end

Dado("preencho o formulario") do
  CadastroUsuario.new.preencher_formulario
end

Quando("clico em continuar") do
  assert_selector("#btnClienteSalvar", wait: 5)
  find("#btnClienteSalvar").click
end

Entao("valido o cadastro efetuado com sucesso") do
  assert_text("Olá", wait: 15)
end
