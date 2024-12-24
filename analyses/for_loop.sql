{% set flavors = ['chocolate', 'vanilla', 'strawberry'] %}

{%- for flavor in flavors -%}

Today I want {{ flavor }} ice cream!

{% endfor %}
