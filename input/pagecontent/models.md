### HL7 FHIR Models

The following table summarizes the logical models used by this guide.


<table  style="border-collapse: collapse; width: 100%" border="1" >
<thead>
<tr style="text-align: center;">
<td><strong>Name</strong></td>
<td><strong>Title</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>

{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
  <!-- <tr><td><a href="{{sd.path}}">{{sd.name}}</a></td><td>{{sd.title}}</td><td>{{sd.description}}</td></tr> -->
  <tr><td><a href="{{sd.path}}">{{sd.title}}</a></td><td>{{sd.description}}</td></tr>
  {%- endif -%}
{%- endfor -%}

</tbody>
</table>