.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetObjectTaggingHandler"
.end annotation


# instance fields
.field private currentTagKey:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private getObjectTaggingResult:Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

.field private tagSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2372
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "Tagging"

    .line 2393
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->in([Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string p1, "TagSet"

    .line 2394
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2395
    new-instance p1, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->tagSet:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->getObjectTaggingResult:Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

    .line 2396
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->tagSet:Ljava/util/List;

    :cond_0
    const-string p1, "Tagging"

    const-string v0, "TagSet"

    .line 2399
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Tag"

    .line 2400
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2401
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->tagSet:Ljava/util/List;

    new-instance p2, Lcom/amazonaws/services/s3/model/Tag;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->currentTagKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->currentTagValue:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->currentTagKey:Ljava/lang/String;

    .line 2403
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->currentTagValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "Tagging"

    const-string p3, "TagSet"

    const-string v0, "Tag"

    .line 2405
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Key"

    .line 2406
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2407
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->currentTagKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "Value"

    .line 2408
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2409
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->currentTagValue:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "Tagging"

    .line 2384
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TagSet"

    .line 2385
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2386
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->tagSet:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public getResult()Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
    .locals 1

    .line 2379
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetObjectTaggingHandler;->getObjectTaggingResult:Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;

    return-object v0
.end method
