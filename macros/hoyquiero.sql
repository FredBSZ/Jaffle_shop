{% macro hoyquiero(flavor, dessert= 'ice cream') %}

Today I want {{flavor}} {{dessert}}
    
{% endmacro %}


{# to run the macro use the compile option and run {{ hoyquiero('panacota') }} #}