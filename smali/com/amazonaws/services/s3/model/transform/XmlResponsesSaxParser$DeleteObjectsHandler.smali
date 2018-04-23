.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteObjectsHandler"
.end annotation


# instance fields
.field private currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

.field private currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

.field private final response:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2444
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2446
    new-instance v0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->response:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    const/4 v0, 0x0

    .line 2449
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 2450
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "DeleteResult"

    .line 2474
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Deleted"

    .line 2475
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 2476
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->response:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    goto/16 :goto_0

    :cond_0
    const-string p1, "Error"

    .line 2478
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2479
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->response:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2480
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    goto/16 :goto_0

    :cond_1
    const-string p1, "DeleteResult"

    const-string p3, "Deleted"

    .line 2484
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Key"

    .line 2485
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2486
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "VersionId"

    .line 2488
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2489
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setVersionId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "DeleteMarker"

    .line 2491
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2492
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 2493
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    const-string p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 2492
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setDeleteMarker(Z)V

    goto :goto_0

    :cond_4
    const-string p1, "DeleteMarkerVersionId"

    .line 2495
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2496
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setDeleteMarkerVersionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "DeleteResult"

    const-string p3, "Error"

    .line 2500
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Key"

    .line 2501
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2502
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "VersionId"

    .line 2504
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2505
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setVersionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p1, "Code"

    .line 2507
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2508
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p1, "Message"

    .line 2510
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2511
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setMessage(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "DeleteResult"

    .line 2463
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Deleted"

    .line 2464
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2465
    new-instance p1, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentDeletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    .line 2466
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2467
    new-instance p1, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->currentError:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    :cond_1
    :goto_0
    return-void
.end method

.method public getDeleteObjectResult()Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    .locals 1

    .line 2453
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->response:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    return-object v0
.end method
