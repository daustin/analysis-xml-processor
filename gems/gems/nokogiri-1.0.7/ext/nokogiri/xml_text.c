#include <xml_text.h>

/*
 * call-seq:
 *  new(content, document)
 *
 * Create a new Text element on the +document+ with +content+
 */
static VALUE new(VALUE klass, VALUE string, VALUE document)
{
  xmlDocPtr doc;
  Data_Get_Struct(document, xmlDoc, doc);

  xmlNodePtr node = xmlNewText((xmlChar *)StringValuePtr(string));
  node->doc = doc;

  VALUE rb_node = Nokogiri_wrap_xml_node(node) ;

  if(rb_block_given_p()) rb_yield(rb_node);

  return rb_node;
}

VALUE cNokogiriXmlText ;
void init_xml_text()
{
  VALUE nokogiri = rb_define_module("Nokogiri");
  VALUE xml = rb_define_module_under(nokogiri, "XML");
  VALUE node = rb_define_class_under(xml, "Node", rb_cObject);

  /*
   * Wraps Text nodes.
   */
  VALUE klass = rb_define_class_under(xml, "Text", node);

  cNokogiriXmlText = klass;

  rb_define_singleton_method(klass, "new", new, 2);
}
