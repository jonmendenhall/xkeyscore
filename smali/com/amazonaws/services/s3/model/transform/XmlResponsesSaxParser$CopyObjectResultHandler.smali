.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.source "XmlResponsesSaxParser.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/S3VersionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyObjectResultHandler"
.end annotation


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorHostId:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private receivedErrorResponse:Z

.field private final result:Lcom/amazonaws/services/s3/model/CopyObjectResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1219
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;-><init>()V

    .line 1223
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    const/4 v0, 0x0

    .line 1226
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    .line 1227
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    .line 1228
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    .line 1229
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1230
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "CopyObjectResult"

    .line 1323
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "CopyPartResult"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    .line 1331
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Code"

    .line 1332
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1333
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "Message"

    .line 1334
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1335
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "RequestId"

    .line 1336
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1337
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "HostId"

    .line 1338
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1339
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "LastModified"

    .line 1324
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1325
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setLastModifiedDate(Ljava/util/Date;)V

    goto :goto_1

    :cond_5
    const-string p1, "ETag"

    .line 1326
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1327
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setETag(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1312
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->atTopLevel()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CopyObjectResult"

    .line 1313
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CopyPartResult"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    .line 1315
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1316
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1314
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getETag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHostId()Ljava/lang/String;
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isErrorResponse()Z
    .locals 1

    .line 1292
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    return v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->isRequesterCharged()Z

    move-result v0

    return v0
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTime(Ljava/util/Date;)V

    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setRequesterCharged(Z)V

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method protected sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->result:Lcom/amazonaws/services/s3/model/CopyObjectResult;

    return-object v0
.end method
