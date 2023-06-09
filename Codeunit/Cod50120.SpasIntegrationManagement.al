codeunit 50120 SpasIntegrationManagement
{
    Permissions = tabledata "Sales Invoice Header" = rimd, tabledata "Sales Invoice Line" = rimd;
    //     finance.user@dthousing.onmicrosoft.com
    // F!n@nc3!@#$%

    procedure SynchZone(var rec: Record Language)
    var
        client: HttpClient;
        uri: Text;
        request: HttpRequestMessage;
        response: HttpResponseMessage;
        AuthString: Text;
        TypeHelper: Codeunit "Base64 Convert";
        contentHeaders: HttpHeaders;
        // Picture: Record Picture temporary;
        responseText: Text;
        JsonText: Text;
        JObject: JsonObject;
        content: HttpContent;
        existenceCheckUrl: Text;
    begin
        if not Confirm('Do you want to post?') then
            exit;

        //  uri := DimensionValue."IP Address" + ':' + DimensionValue."Port No" + '/' + DimensionValue."Instance Name" + '/api/BizNP/biobizapi/v1.0/companies(' + DelChr(Format(DimensionValue."Company Id"), '<>', '{}') + ')/dimensionvalues';

        uri := 'http://202.51.1.175:1169/api/api' + '/zone';
        // existenceCheckUrl := url + '?$filter= DimensionCode eq ' + Rec."Dimension Code" + ' and Code eq' + Rec.Code; //
        // // Add the payload to the content
        JObject.Add('Code', Rec.Code);
        JObject.Add('Description', Rec.Code);
        JObject.WriteTo(JsonText);
        content.WriteFrom(JsonText);
        content.GetHeaders(contentHeaders);
        contentHeaders.Clear();
        // AuthString := STRSUBSTNO('%1:%2', 'CHANDRA', 'Ch@nd1@95#');
        // AuthString := TypeHelper.ToBase64(AuthString);
        // AuthString := STRSUBSTNO('Basic %1', AuthString);

        client.DefaultRequestHeaders().Add('Authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYiLCJuYmYiOjE2ODE2NDY4MTQsImV4cCI6MTY4MjA3ODgxNCwiaWF0IjoxNjgxNjQ2ODE0fQ.0as_KHiGCNTL_FvNttNW90EW8jGcZTlo0Ie4Wk5g3Ew');
        contentHeaders.Add('Content-Type', 'application/json');
        // request.Content := content;
        // request.SetRequestUri(uri);
        // request.Method := 'POST';

        client.Post(uri, content, response);
        // client.Send(request, response);
        response.Content().ReadAs(responseText);
        if response.IsSuccessStatusCode then begin
            Message('Zone Synced Successfully with api: ' + uri);
        end else begin
            Error('Sync Failed: %1', response.ReasonPhrase);
        end;

    end;



    procedure GetZone()
    var
        client: HttpClient;
        uri: Text;
        request: HttpRequestMessage;
        response: HttpResponseMessage;
        AuthString: Text;
        TypeHelper: Codeunit "Base64 Convert";
        contentHeaders: HttpHeaders;
        // Picture: Record Picture temporary;
        responseText: Text;
        JsonText: Text;
        JObject: JsonObject;
        content: HttpContent;
        existenceCheckUrl: Text;
    begin
        Client.Get(StrSubstNo('http://jsonplaceholder.typicode.com/users/1'), response);
        //     Error('The call to the web service failed.');

        // Client.Get(StrSubstNo('http://202.51.1.175:1169/api/api/dateconversion/2023-04-18'), response);
        // Error('The call to the web service failed.');

        response.Content().ReadAs(responseText);

        if not response.IsSuccessStatusCode() then
            Error('The web service returned an error message:\\' +
                    'Status code: ' + Format(response.HttpStatusCode()) +
                    'Description: ' + response.ReasonPhrase());



        //  uri := DimensionValue."IP Address" + ':' + DimensionValue."Port No" + '/' + DimensionValue."Instance Name" + '/api/BizNP/biobizapi/v1.0/companies(' + DelChr(Format(DimensionValue."Company Id"), '<>', '{}') + ')/dimensionvalues';

        uri := 'https://202.51.1.175:1169/api/api/dateconversion/2023-04-18';
        // existenceCheckUrl := url + '?$filter= DimensionCode eq ' + Rec."Dimension Code" + ' and Code eq' + Rec.Code; //
        // // Add the payload to the content

        // content.GetHeaders(contentHeaders);
        // contentHeaders.Clear();

        // AuthString := STRSUBSTNO('%1:%2', 'CHANDRA', 'Ch@nd1@95#');
        // AuthString := TypeHelper.ToBase64(AuthString);
        // AuthString := STRSUBSTNO('Basic %1', AuthString);

        // client.DefaultRequestHeaders().Add('Authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYiLCJuYmYiOjE2ODE2NDY4MTQsImV4cCI6MTY4MjA3ODgxNCwiaWF0IjoxNjgxNjQ2ODE0fQ.0as_KHiGCNTL_FvNttNW90EW8jGcZTlo0Ie4Wk5g3Ew');
        // contentHeaders.Add('Content-Type', 'application/json');
        // request.Content := content;
        // request.SetRequestUri(uri);
        // request.Method := 'POST';
        client.DefaultRequestHeaders.Clear();
        client.Get(uri, response);
        // client.Send(request, response);
        Message(Format(response));
        response.Content().ReadAs(responseText);

        if response.IsSuccessStatusCode then begin
            Message('Zone Synced Successfully with api: ' + uri);
        end else begin
            Error('Sync Failed: %1', response.ReasonPhrase);
        end;

    end;

    procedure SetSpasSyncToPending(var SalesInvoiceHeader: Record "Sales Invoice Header")
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        if SalesInvoiceHeader.FindFirst() then
            repeat
                SalesInvoiceHeader."Spas Sync" := SalesInvoiceHeader."Spas Sync"::Pending;
                SalesInvoiceLine.Reset();
                SalesInvoiceLine.SetRange("Document No.", SalesInvoiceHeader."No.");
                If SalesInvoiceLine.FindFirst() then
                    repeat
                        SalesInvoiceLine."Spas Sync" := SalesInvoiceLine."Spas Sync"::Pending;
                        SalesInvoiceLine.Modify();
                    until SalesInvoiceLine.Next() = 0;
                SalesInvoiceHeader.Modify();
            until SalesInvoiceHeader.Next() = 0;

    end;

}
