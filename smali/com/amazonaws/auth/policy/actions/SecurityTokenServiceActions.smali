.class public final enum Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
.super Ljava/lang/Enum;
.source "SecurityTokenServiceActions.java"

# interfaces
.implements Lcom/amazonaws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;",
        ">;",
        "Lcom/amazonaws/auth/policy/Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AllSecurityTokenServiceActions:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AssumeRole:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AssumeRoleWithWebIdentity:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetCallerIdentity:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetFederationToken:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetSessionToken:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "AllSecurityTokenServiceActions"

    const-string v2, "sts:*"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->AllSecurityTokenServiceActions:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    .line 29
    new-instance v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "AssumeRole"

    const-string v2, "sts:AssumeRole"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRole:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    .line 32
    new-instance v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "AssumeRoleWithWebIdentity"

    const-string v2, "sts:AssumeRoleWithWebIdentity"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRoleWithWebIdentity:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    .line 35
    new-instance v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "GetCallerIdentity"

    const-string v2, "sts:GetCallerIdentity"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->GetCallerIdentity:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    .line 38
    new-instance v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "GetFederationToken"

    const-string v2, "sts:GetFederationToken"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->GetFederationToken:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    .line 41
    new-instance v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "GetSessionToken"

    const-string v2, "sts:GetSessionToken"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->GetSessionToken:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    const/4 v0, 0x6

    .line 24
    new-array v0, v0, [Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->AllSecurityTokenServiceActions:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRole:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRoleWithWebIdentity:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->GetCallerIdentity:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->GetFederationToken:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->GetSessionToken:Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v1, v0, v8

    sput-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->$VALUES:[Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;->action:Ljava/lang/String;

    return-object v0
.end method
