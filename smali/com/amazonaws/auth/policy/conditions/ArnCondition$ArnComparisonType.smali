.class public final enum Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
.super Ljava/lang/Enum;
.source "ArnCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/conditions/ArnCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArnComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnEquals:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnNotEquals:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnNotLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const-string v1, "ArnEquals"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnEquals:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 63
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const-string v1, "ArnLike"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 66
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const-string v1, "ArnNotEquals"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotEquals:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 69
    new-instance v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const-string v1, "ArnNotLike"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnEquals:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotEquals:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotLike:Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    .locals 1

    .line 53
    const-class v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->$VALUES:[Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    return-object v0
.end method
