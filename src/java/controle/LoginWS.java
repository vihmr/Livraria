
package controle;

import dao.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Admin;
import util.Criptografia;

@WebServlet(name = "LoginWS", urlPatterns = {"/admin/login/LoginWS"})
public class LoginWS extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("txtEmail");
        
        String senha;
        String pagina;
        try {
            senha = Criptografia.convertPasswordToMD5(request.getParameter("txtSenha"));
            AdminDAO dao = new AdminDAO();
            Admin admin = dao.fazerLogin(email, senha);
            if(admin.getId() != null){
                pagina = "../inicial/index.jsp";
            }else{
                request.setAttribute("msg", "Senha e/ou Login incorretos!");
                pagina = "login.jsp";
            }
            RequestDispatcher destino = request.getRequestDispatcher(pagina);
            destino.forward(request, response);
            
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(LoginWS.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
}