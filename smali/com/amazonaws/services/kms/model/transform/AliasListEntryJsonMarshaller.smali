.class Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;
.super Ljava/lang/Object;
.source "AliasListEntryJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;

    .line 51
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;->instance:Lcom/amazonaws/services/kms/model/transform/AliasListEntryJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/kms/model/AliasListEntry;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AliasListEntry;->getAliasName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AliasListEntry;->getAliasName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliasName"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AliasListEntry;->getAliasArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AliasListEntry;->getAliasArn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliasArn"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AliasListEntry;->getTargetKeyId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AliasListEntry;->getTargetKeyId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TargetKeyId"

    .line 40
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
