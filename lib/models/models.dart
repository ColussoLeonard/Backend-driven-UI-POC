const POC_JSON_STRING_FROM_BACKEND = """{
 "type": "column",
  "children": [{
    "type": "column",
    "children": [
        {
                "type": "card",
                "title": "Fundos de investimentos",
                "subTitle": "Sao mais de 100000 de ativos a 100000 dollynho",
                "iconPath": 58713,
                "expandedVersion": true,
                "onTap": "redirect_acoes",
                "btnDescription": "Saiba Mais"
        },
         {
            "type": "card",
            "title": "acoes",
            "subTitle": "",
            "iconPath": 58716,
            "expandedVersion": false,
            "onTap": "redirect_etf"
        },
        {
            "type": "card",
            "title": "ETF",
            "subTitle": "",
            "iconPath": 58715,
            "expandedVersion": false,
            "onTap": "redirect_etf"
        },
        {
            "type": "card",
            "title": "Cart.Adm",
            "subTitle": "",
            "iconPath": 58751,
            "expandedVersion": false,
            "onTap": "redirect_etf"
        },
        {
                "type": "card",
                "title": "Bonds",
                "subTitle": "Compre dividas americanas aqui",
                "iconPath": 58750,
                "expandedVersion": true,
                "onTap": "redirect_acoes",
                "btnDescription": "Saiba Mais"
        }
    ]},
    {"type": "column",
    "children": [{
          "type": "row",
          "children": [
           {
            "type": "text",
            "textValue": "Teste de texto disclaimers etc etc etc lorem lorem"
          }
          ]
      }]
  }]}
""";