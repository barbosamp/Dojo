class CadastroUsuario

  include RSpec::Matchers
  include Capybara::DSL

  def preencher_formulario
    email = eval(DATA["email"])
    assert_selector(EL["texto_nome"], wait: 5)
    find(EL["texto_nome"]).set(eval(DATA["nome"]))
    find(EL["texto_cpf"]).set(eval(DATA["cpf"]))
    find(EL["selecao_tipo_telefone1"]).select("Celular")
    find(EL["texto_ddd_telefone1"]).set("11")
    find(EL["texto_telefone1"]).set("55555555")
    find(EL["selecao_tipo_telefone2"]).select("Comercial")
    find(EL["texto_ddd_telefone2"]).set("11")
    find(EL["texto_telefone2"]).set("55235555")
    find(EL["dia_nascimento"]).set("10")
    find(EL["mes_nascimento"]).set("10")
    find(EL["ano_nascimento"]).set("1990")
    find(EL["sexo"]).click
    find(EL["email"]).set(email)
    find(EL["confirmacao_email"]).set(email)
    find(EL["senha"]).set("@Teste123")
    find(EL["confirmacao_senha"]).set("@Teste123")
    find(EL["aviso_email"]).click
    find(EL["aviso_sms"]).click

  end
end
