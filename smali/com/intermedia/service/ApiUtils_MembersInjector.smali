.class public final Lcom/intermedia/service/ApiUtils_MembersInjector;
.super Ljava/lang/Object;
.source "ApiUtils_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/service/ApiUtils;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/service/ApiUtils_MembersInjector;->sharedPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/service/ApiUtils;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/intermedia/service/ApiUtils_MembersInjector;

    invoke-direct {v0, p0}, Lcom/intermedia/service/ApiUtils_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSharedPrefs(Lcom/intermedia/service/ApiUtils;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/service/ApiUtils;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/service/ApiUtils;)V
    .locals 1

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils_MembersInjector;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/intermedia/service/ApiUtils;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/intermedia/service/ApiUtils;

    invoke-virtual {p0, p1}, Lcom/intermedia/service/ApiUtils_MembersInjector;->injectMembers(Lcom/intermedia/service/ApiUtils;)V

    return-void
.end method
