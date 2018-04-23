.class public Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialRequestMarshaller;
.super Ljava/lang/Object;
.source "ImportKeyMaterialRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;",
        ">;",
        "Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;)Lcom/amazonaws/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(ImportKeyMaterialRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSKMS"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "TrentService.ImportKeyMaterial"

    const-string v2, "X-Amz-Target"

    .line 53
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 57
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 59
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 60
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyId"

    .line 65
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "ImportToken"

    .line 70
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "EncryptedKeyMaterial"

    .line 76
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v3

    const-string v4, "ValidTo"

    .line 81
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ExpirationModel"

    .line 86
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 87
    invoke-interface {v2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 90
    :cond_5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 92
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 94
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 95
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    invoke-interface {v0}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    .line 101
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    .line 97
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/ImportKeyMaterialRequestMarshaller;->marshall(Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
