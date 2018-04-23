.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketReplicationConfigurationHandler"
.end annotation


# static fields
.field private static final BUCKET:Ljava/lang/String; = "Bucket"

.field private static final DESTINATION:Ljava/lang/String; = "Destination"

.field private static final ID:Ljava/lang/String; = "ID"

.field private static final PREFIX:Ljava/lang/String; = "Prefix"

.field private static final REPLICATION_CONFIG:Ljava/lang/String; = "ReplicationConfiguration"

.field private static final ROLE:Ljava/lang/String; = "Role"

.field private static final RULE:Ljava/lang/String; = "Rule"

.field private static final STATUS:Ljava/lang/String; = "Status"

.field private static final STORAGECLASS:Ljava/lang/String; = "StorageClass"


# instance fields
.field private final bucketReplicationConfiguration:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

.field private currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

.field private currentRuleId:Ljava/lang/String;

.field private destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2224
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2227
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->bucketReplicationConfiguration:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "ReplicationConfiguration"

    .line 2262
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Rule"

    .line 2263
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2264
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->bucketReplicationConfiguration:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRuleId:Ljava/lang/String;

    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

    invoke-virtual {p1, p2, p3}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->addRule(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ReplicationRule;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    const/4 p1, 0x0

    .line 2266
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

    .line 2267
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRuleId:Ljava/lang/String;

    .line 2268
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    goto/16 :goto_0

    :cond_0
    const-string p1, "Role"

    .line 2269
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2270
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->bucketReplicationConfiguration:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->setRoleARN(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "ReplicationConfiguration"

    const-string p3, "Rule"

    .line 2272
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ID"

    .line 2273
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2274
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRuleId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "Prefix"

    .line 2275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2276
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "Status"

    .line 2278
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2279
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "Destination"

    .line 2281
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2282
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setDestinationConfig(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)V

    goto :goto_0

    :cond_5
    const-string p1, "ReplicationConfiguration"

    const-string p3, "Rule"

    const-string v0, "Destination"

    .line 2285
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Bucket"

    .line 2286
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2287
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setBucketARN(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "StorageClass"

    .line 2288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2289
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "ReplicationConfiguration"

    .line 2249
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Rule"

    .line 2250
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2251
    new-instance p1, Lcom/amazonaws/services/s3/model/ReplicationRule;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->currentRule:Lcom/amazonaws/services/s3/model/ReplicationRule;

    goto :goto_0

    :cond_0
    const-string p1, "ReplicationConfiguration"

    const-string p3, "Rule"

    .line 2253
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Destination"

    .line 2254
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2255
    new-instance p1, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    :cond_1
    :goto_0
    return-void
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 1

    .line 2242
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->bucketReplicationConfiguration:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-object v0
.end method
