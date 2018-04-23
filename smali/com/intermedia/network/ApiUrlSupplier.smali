.class public Lcom/intermedia/network/ApiUrlSupplier;
.super Ljava/lang/Object;
.source "ApiUrlSupplier.java"

# interfaces
.implements Lcom/intermedia/function/Supplier;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/intermedia/network/ApiUrlSupplier;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "https://api-quiz.hype.space/"

    return-object v0
.end method
