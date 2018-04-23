.class public final enum Lcom/amazonaws/auth/policy/Statement$Effect;
.super Ljava/lang/Enum;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/Statement$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/Statement$Effect;

.field public static final enum Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

.field public static final enum Deny:Lcom/amazonaws/auth/policy/Statement$Effect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Lcom/amazonaws/auth/policy/Statement$Effect;

    const-string v1, "Allow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Statement$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    .line 73
    new-instance v0, Lcom/amazonaws/auth/policy/Statement$Effect;

    const-string v1, "Deny"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/auth/policy/Statement$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazonaws/auth/policy/Statement$Effect;

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Lcom/amazonaws/auth/policy/Statement$Effect;

    sget-object v1, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazonaws/auth/policy/Statement$Effect;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->$VALUES:[Lcom/amazonaws/auth/policy/Statement$Effect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .line 67
    const-class v0, Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazonaws/auth/policy/Statement$Effect;->$VALUES:[Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/Statement$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method
