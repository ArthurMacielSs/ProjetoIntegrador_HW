function validarFormulario() {
    

    if (document.getElementById('nomesobrenome')) {
    var nomeSobrenome = document.getElementById('nomesobrenome').value.trim();
    }

    if (document.getElementById('email')) {
    var email = document.getElementById('email').value.trim();
    }

    if (document.getElementById('telefone')) {
    var telefone = document.getElementById('telefone').value.trim();
    }

    if (document.getElementById('doenca')) {
    var doenca = document.getElementById('doenca').value.trim();
    }

    if (document.getElementById('interesse')) {
    var abordar = document.getElementById('interesse').value.trim();
    }

    if (document.getElementById('impacto')) {
    var impacto = document.getElementById('impacto').value.trim();
    }

    if (document.getElementById('mensagem')) {
    var mensagem = document.getElementById('mensagem').value.trim();
    }

    // Expressões regulares para validação
    var emailRegex = /\S+@\S+\.\S+/;
    var telefoneRegex = /^\(\d{2}\) \d{5}-\d{4}$/;

    // Verifica se o nome e sobrenome possuem pelo menos duas palavras
    if (nomeSobrenome.split(' ').length < 2) {
        alert('Por favor, insira um nome e sobrenome válidos.');
        return false;
    }

    // Verifica se o email possui o formato válido
    if (!emailRegex.test(email)) {
        alert('Por favor, insira um endereço de email válido.');
        return false;
    }

    // Verifica se o telefone possui o formato válido
    if (!telefoneRegex.test(telefone)) {
        alert('Por favor, insira um número de telefone válido no formato (XX) XXXXX-XXXX.');
        return false;
    }

    // Verifica se a doença possui pelo menos duas palavras
    if (doenca.split(' ').length < 1) {
        alert('Por favor, insira o nome da doença.');
        return false;
    }

    // Verifica se o campo "abordar" possui pelo menos 25 caracteres
    if (abordar.length < 25) {
        alert('Por favor, descreva por que seria interessante abordar essa doença com pelo menos 25 caracteres.');
        return false;
    }

    // Verifica se o campo "impacto" possui pelo menos 25 caracteres
    if (impacto.length < 25) {
        alert('Por favor, descreva como essa doença afeta os brasileiros com pelo menos 25 caracteres.');
        return false;
    }
   
    if (mensagem.length < 25) {
        alert('Por favor, descreva como essa doença afeta os brasileiros com pelo menos 25 caracteres.');
        return false;
    }
    

    // Retorna true se todas as validações passarem
    return true;
}
