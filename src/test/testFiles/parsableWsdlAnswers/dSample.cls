//Generated by wsdl2apex

public class dSample {
    public class EchoStringResponse_element {
        public String name;
        private String[] name_type_info = new String[]{'name','http://doc.sample.com/docSample',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://doc.sample.com/docSample','true','false'};
        private String[] field_order_type_info = new String[]{'name'};
    }
    public class EchoString_element {
        public String input;
        private String[] input_type_info = new String[]{'input','http://doc.sample.com/docSample',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://doc.sample.com/docSample','true','false'};
        private String[] field_order_type_info = new String[]{'input'};
    }
    public class DocSamplePort {
        public String endpoint_x = 'http://www.qaresponder.info/WebServices/DocSample.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://doc.sample.com/docSample', 'dSample'};
        public String EchoString(String input) {
            dSample.EchoString_element request_x = new dSample.EchoString_element();
            request_x.input = input;
            dSample.EchoStringResponse_element response_x;
            Map<String, dSample.EchoStringResponse_element> response_map_x = new Map<String, dSample.EchoStringResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'urn:dotnet.callouttest.soap.sforce.com/EchoString',
              'http://doc.sample.com/docSample',
              'EchoString',
              'http://doc.sample.com/docSample',
              'EchoStringResponse',
              'dSample.EchoStringResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.name;
        }
    }
}