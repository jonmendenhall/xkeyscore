.class public Lcom/intermedia/user/session/UserSession;
.super Ljava/lang/Object;
.source "UserSession.java"


# static fields
.field static final EMPTY:Lcom/intermedia/user/session/UserSession;


# instance fields
.field final accessToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final isAdmin:Z

.field final loginToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final userId:J

.field final userName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v7, Lcom/intermedia/user/session/UserSession;

    const-string v1, ""

    const-string v5, ""

    const-string v6, ""

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/intermedia/user/session/UserSession;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/intermedia/user/session/UserSession;->EMPTY:Lcom/intermedia/user/session/UserSession;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/intermedia/user/session/UserSession;->userName:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lcom/intermedia/user/session/UserSession;->userId:J

    .line 21
    iput-boolean p4, p0, Lcom/intermedia/user/session/UserSession;->isAdmin:Z

    .line 22
    invoke-static {p5}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/intermedia/user/session/UserSession;->accessToken:Ljava/lang/String;

    .line 23
    invoke-static {p6}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/intermedia/user/session/UserSession;->loginToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isLoggedIn()Z
    .locals 4

    .line 27
    iget-wide v0, p0, Lcom/intermedia/user/session/UserSession;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/user/session/UserSession;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
