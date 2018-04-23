.class Lcom/intermedia/user/session/AccessTokenRefresher$AccessTokenRefresherException;
.super Ljava/lang/Throwable;
.source "AccessTokenRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/user/session/AccessTokenRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessTokenRefresherException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/user/session/AccessTokenRefresher;


# direct methods
.method constructor <init>(Lcom/intermedia/user/session/AccessTokenRefresher;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/intermedia/user/session/AccessTokenRefresher$AccessTokenRefresherException;->this$0:Lcom/intermedia/user/session/AccessTokenRefresher;

    .line 75
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
