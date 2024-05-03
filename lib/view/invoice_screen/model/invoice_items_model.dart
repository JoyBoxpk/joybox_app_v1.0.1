class InvoiceItemModel {
  final String inVoiceId;
  final String addresstitle;
  final String fulladreess;
  InvoiceItemModel({
    required this.inVoiceId,
    required this.addresstitle,
    required this.fulladreess,
  });
}

final List<InvoiceItemModel> IvoiceItemlist = [
  InvoiceItemModel(
      inVoiceId: "Invoice ID #ORD-0000312",
      addresstitle: "Sultan Dine",
      fulladreess:
          "250 W 72nd St, Karachi Pakistan Opens at 09:00 AM - Closes at 11:00 PM"),
  InvoiceItemModel(
      inVoiceId: "Invoice ID #ORD-0000312",
      addresstitle: "Sultan Dine",
      fulladreess:
          "250 W 72nd St, Karachi Pakistan Opens at 09:00 AM - Closes at 11:00 PM"),
  InvoiceItemModel(
      inVoiceId: "Invoice ID #ORD-0000312",
      addresstitle: "Sultan Dine",
      fulladreess:
          "250 W 72nd St, Karachi Pakistan Opens at 09:00 AM - Closes at 11:00 PM"),
  InvoiceItemModel(
      inVoiceId: "Invoice ID #ORD-0000312",
      addresstitle: "Sultan Dine",
      fulladreess:
          "250 W 72nd St, Karachi Pakistan Opens at 09:00 AM - Closes at 11:00 PM"),
  InvoiceItemModel(
      inVoiceId: "Invoice ID #ORD-0000310",
      addresstitle: "Sultan Dine",
      fulladreess:
          "250 W 72nd St, Karachi Pakistan Opens at 09:00 AM - Closes at 11:00 PM")
];
