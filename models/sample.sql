{% set items = ["Dog", "Cat", "Bird", "Carrot"] %}

{% for item in items %}
    {% if item == "Carrot" %} {% set item_type = "vegetable" %}
    {% else %} {% set item_type = "animal" %}
    {% endif %}

    {{ item }} is {{ item_type }}

{% endfor %}
