.class public Lcom/amazonaws/auth/policy/conditions/StringCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "StringCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 73
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
