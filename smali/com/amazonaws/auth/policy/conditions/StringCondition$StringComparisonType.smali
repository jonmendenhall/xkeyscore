.class public final enum Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
.super Ljava/lang/Enum;
.source "StringCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/conditions/StringCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringNotEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringNotEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

.field public static final enum StringNotLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringEquals"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    .line 36
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringEqualsIgnoreCase"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    .line 43
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringLike"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    .line 46
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringNotEquals"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    .line 49
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringNotEqualsIgnoreCase"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    .line 52
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const-string v1, "StringNotLike"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEquals:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotEqualsIgnoreCase:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->StringNotLike:Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    .locals 1

    .line 31
    const-class v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    return-object v0
.end method
