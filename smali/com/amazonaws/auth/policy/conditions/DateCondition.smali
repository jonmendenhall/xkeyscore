.class public Lcom/amazonaws/auth/policy/conditions/DateCondition;
.super Lcom/amazonaws/auth/policy/Condition;
.source "DateCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;Ljava/util/Date;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    const-string p1, "aws:CurrentTime"

    .line 67
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 68
    new-array p1, p1, [Ljava/lang/String;

    .line 69
    invoke-static {p2}, Lcom/amazonaws/util/DateUtils;->formatISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 68
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
