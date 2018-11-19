<#import "parts/common.ftl" as c>
<@c.page>
    <h2>Приветствую!</h2>
    <br>
    <table>
        <tr>
            <th>Номер заказа</th>
        </tr>
        <#list orders as order>
            <tr>
                <td><a href="/order/${order.orderId}">Заказ №${order.orderId}</a></td>
            </tr>
        </#list>
    </table>

</@c.page>