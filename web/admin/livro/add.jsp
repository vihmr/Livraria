<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>
<div class="card">
    <div class="card-header">
        <h5 class="title">Adiciona Livro</h5>
    </div>
    <div class="card-body">
        <!--MODIFICAR PARA ADD-->
        <form action="UploadWS" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="urldestino" value="LivroWS">
            <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" name="txtNome" required class="form-control" placeholder="Nome" >
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>Data de Lan�amento</label>
                        <input type="text" name="txtDataLanc" required class="form-control" placeholder="Data de Lan�amento" >
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>Autor</label>
                        <select name="txtAutor" class="form-control">
                            <option>Selecione</option>
                            <c:forEach items="${listaAutor}" var="obj">
                                <option value="${obj.id}">${obj.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>Editora</label>
                        <select name="txtEditora" class="form-control">
                            <option>Selecione</option>
                            <c:forEach items="${listaEditora}" var="obj">
                                <option value="${obj.id}">${obj.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>Classifica��o</label>
                        <select name="txtClassificacao" class="form-control">
                            <option>Selecione</option>
                            <c:forEach items="${listaClassificacao}" var="obj">
                                <option value="${obj.id}">${obj.classificacao}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <label>G�nero</label>
                        <select name="txtGenero" class="form-control">
                            <option>Selecione</option>
                            <c:forEach items="${listaGenero}" var="obj">
                                <option value="${obj.id}">${obj.genero}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
    </div>
</div>
<div class="col-md-7">
    <div class="form-group-file">
        <label for="file">Capa</label>
        <input type="file" name="txtCapa" required class="form-control form-control-file">
    </div>
</div>
</div>



<button class="btn btn-primary btn-round text-center" type="submit">
    <i class="tim-icons icon-cloud-upload-94"></i> Salvar
</button>
<a class="btn btn-primary btn-round text-center" href="LivroWS?acao=list">
    <i class="tim-icons icon-bullet-list-67"></i> Listar
</a>
</form>
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
</div>
<%@include file="../rodape.jsp" %>