
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-sm">
    <a  href="${pageContext.request.contextPath}/produit?id=${product.id}">
        <div class="product d-flex flex-column justify-content-between" style="background-image: url('${product.imageSrc[0]}')">
            <h2 class="prodTitle p-2">${product.nom}</h2>
            <div class="priceTag custom-control-inline p-2 align-self-center">
                CHF ${product.prix}
                <a href="${pageContext.request.contextPath}/checkout?id=${product.id}&action=add">
                    <img class="cartProduit" src="${pageContext.request.contextPath}/ressources/cart.jpg"/>
                </a>
            </div>
        </div>
    </a>
</div>
