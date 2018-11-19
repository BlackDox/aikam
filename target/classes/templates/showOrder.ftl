<#import "parts/common.ftl" as c>
<@c.page>
    <h2>Заказ №${orderId}</h2>
    <br>
    <table border="3px solid grey"">
        <tr style="text-align: center">
            <th>Товар</th>
            <th>Количество</th>
            <th>Цена, $</th>
            <th>Сумма, $</th>
        </tr>
        <#list orders as order>
            <tr class="sum" style="text-align: center">
                <td>${order.product.name}</td>
                <td class="quantity">${order.quantity}</td>
                <td class="price">${order.product.price}</td>
                <td class="total"></td>
            </tr>
        </#list>
                <tr>
                    <td colspan="3" style="font-weight:bold; text-align:right">Итого по заказу:</td>
                    <td class="total_sum" style="font-weight:bold; text-align:center"></td>
                </tr>
            </table>
            <br>
            <a href="/">Назад</a></body>

</@c.page>

<script>
    $(document).ready(function () {
        var totalSum = 0;
        $(".sum").each(function () {
            var quantity = $(this).find('.quantity').text();
            var price = parseFloat($(this).find('.price').text().replace(/,/, '.'));
            var sum = quantity * price;
            $(this).find('.total').text(sum);
            totalSum += sum;
        })
        $(".total_sum").text(totalSum);
    })
</script>
