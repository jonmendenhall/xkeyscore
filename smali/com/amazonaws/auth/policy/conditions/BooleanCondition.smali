.class public Lcom/amazonaws/auth/policy/conditions/BooleanCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "BooleanCondition.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    const-string v0, "Bool"

    .line 38
    iput-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 40
    new-array p1, p1, [Ljava/lang/String;

    .line 41
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 40
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
