package filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebFilter(urlPatterns = {"/principal/*"})/*Intercepta todas as requisiçoes que vierem do projeto ou mapeamento*/
public class FilterAutenticacao implements Filter {
       
   
    public FilterAutenticacao() {        
    }

    /*Encerra os processos quando o servidor é parado */
    //Ex: Mataria os processos de conexao com o banco
	public void destroy() {
	
	}

	/* Intercepta as requisicoes e as respostas no sistema */
	// Tudo que fizer no sistema passa por aqui
	//Ex: Validaçao de autenticaçao , commit e rollback de transações de banco
	// validar e fazer redirecionamento
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		String usuarioLogado = (String) session.getAttribute("usuario");
		
		String urlParaAutenticar = req.getServletPath(); //Url que esta sendo acessada
		
		//Validar se esta logado senao redireciona parar a tela de login
		if(usuarioLogado == null &&
				!urlParaAutenticar.equalsIgnoreCase("/principal/ServletLogin")) {// Não esta logado
			
			RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
			request.setAttribute("msg", "Por favor realize o login!");
			redireciona.forward(request, response);
			return;//Para a execuçao e redireciona para o login		
		}else {
			chain.doFilter(request, response);
		}
		
	}

	/* Inicio os processos ou recursos quando o servidor sobe o projeto */
	//Ex: Iniciar a conexao com o banco
	public void init(FilterConfig fConfig) throws ServletException {
	
	}

}
