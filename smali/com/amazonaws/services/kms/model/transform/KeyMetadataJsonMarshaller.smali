.class Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;
.super Ljava/lang/Object;
.source "KeyMetadataJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;
    .locals 1

    .line 94
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    .line 96
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/KeyMetadataJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/kms/model/KeyMetadata;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getAWSAccountId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getAWSAccountId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWSAccountId"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getKeyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyId"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getArn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arn"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDate"

    .line 45
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Enabled"

    .line 50
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 53
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Description"

    .line 55
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getKeyUsage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 59
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getKeyUsage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyUsage"

    .line 60
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getKeyState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getKeyState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyState"

    .line 65
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getDeletionDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 69
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getDeletionDate()Ljava/util/Date;

    move-result-object v0

    const-string v1, "DeletionDate"

    .line 70
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getValidTo()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getValidTo()Ljava/util/Date;

    move-result-object v0

    const-string v1, "ValidTo"

    .line 75
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getOrigin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getOrigin()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    .line 80
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 83
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getExpirationModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyMetadata;->getExpirationModel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExpirationModel"

    .line 85
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 88
    :cond_b
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
