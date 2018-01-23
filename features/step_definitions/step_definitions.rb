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
  assert_selector("#NomeCompleto", wait: 5)
  find("#NomeCompleto").set("Vitaum Mandioca")
  find("input[id='Cpf']").set("610.658.088-01")
  find("#TipoFone1").select("Celular")
  find("input[id='Telefone1DDDPF']").set("11")
  find("input[id='Telefone1PF']").set("55555555")
  find("#TipoFone2").select("Comercial")
  find("input[id='Telefone2DDDPF']").set("11")
  find("input[id='Telefone2PF']").set("55235555")
  find("input[id='DataNascimentoDia']").set("10")
  find("input[id='DataNascimentoMes']").set("10")
  find("input[id='DataNascimentoAno']").set("1990")
  find("span[class='sexM']").click
  email = "jahdaask8@ajs.com"
  find("#Email").set(email)
  find("#ConfirmarEmail").set(email)
  find("#Senha").set("@Teste123")
  find("#ConfirmarSenha").set("@Teste123")
  find("#ReceberAvisoEmail").click
  find("#ReceberAvisoSms").click
end

Quando("clico em continuar") do
  assert_selector("#btnClienteSalvar", wait: 5)
  find("#btnClienteSalvar").click
end

Entao("valido o cadastro efetuado com sucesso") do
  assert_text("Olá", wait: 15)
end
