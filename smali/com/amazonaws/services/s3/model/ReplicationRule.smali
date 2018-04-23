.class public Lcom/amazonaws/services/s3/model/ReplicationRule;
.super Ljava/lang/Object;
.source "ReplicationRule.java"


# instance fields
.field private destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

.field private prefix:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationConfig()Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationConfig(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 138
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination cannot be null in the replication rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->destinationConfig:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix cannot be null for a replication rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationRule;->status:Ljava/lang/String;

    return-void
.end method

.method public withDestinationConfig(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setDestinationConfig(Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStatus(Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .locals 0

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setStatus(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->setStatus(Ljava/lang/String;)V

    return-object p0
.end method
