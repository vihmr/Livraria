<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>

<div class="card ">
    <div class="card-header">
        <h4 class="card-title">Editora</h4>
    </div>
    <div class="card-body">
        <a class="btn btn-primary btn-round text-center" href="add.jsp">
            <i class="tim-icons icon-simple-add"></i> Adiciona
        </a>
        <div class="table-responsive">
            <table class="table tablesorter " id="">
                <thead class=" text-primary">
                <th>
                    ID
                </th>
                <th>
                    Nome
                </th>
                <th>
                    Endere�o
                </th>
                <th>
                    Telefone
                </th>
                <th>
                    Foto
                </th>
                <th>
                    Edita
                </th>
                <th>
                    Deleta
                </th>
                
                </thead>
                <tbody>
                    <c:forEach items="${lista}" var="obj">
                        <tr>
                            <td>${obj.id}</td>
                            <td>${obj.nome}</td>
                            <td>${obj.endereco}</td>
                            <td>${obj.telefone}</td>
                            <td><img src="../../arquivos/${obj.endFoto}" height="42" width="42"></td>
                            <td>
                                <a class="btn btn-info btn-fab btn-icon btn-round" href="EditoraWS?acao=edit&id=${obj.id}">
                                    <i class="tim-icons icon-pencil"></i>
                                </a>
                            </td>
                            <td>
                                <a class="btn btn-primary btn-fab btn-icon btn-round" href="EditoraWS?acao=del&id=${obj.id}">
                                    <i class="tim-icons icon-trash-simple"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>        
                </tbody>
            </table>
        </div>
    </div>
    <div class="card-footer">
        <c:if test = "${not empty msg}">
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                ${msg}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="tim-icons icon-simple-remove"></i>
                </button>
            </div>
        </c:if>
    </div>
</div>

<%@include file="../rodape.jsp" %>