.class public Lcom/intermedia/model/retrofit/LoginTokenBody;
.super Ljava/lang/Object;
.source "LoginTokenBody.java"


# instance fields
.field public final token:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/intermedia/model/retrofit/LoginTokenBody;->token:Ljava/lang/String;

    return-void
.end method
