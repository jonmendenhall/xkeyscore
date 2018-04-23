.class public Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "IpAddressCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    const-string p1, "aws:SourceIp"

    .line 91
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 92
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->IpAddress:Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/auth/policy/conditions/IpAddressCondition;-><init>(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V

    return-void
.end method
