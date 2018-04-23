.class public final Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;
.super Ljava/lang/Object;
.source "UnauthorizedResponseInterceptor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final accessTokenRefresherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/AccessTokenRefresher;",
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
            "Lcom/intermedia/user/session/AccessTokenRefresher;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;->accessTokenRefresherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/AccessTokenRefresher;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newUnauthorizedResponseInterceptor(Lcom/intermedia/user/session/AccessTokenRefresher;)Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;
    .locals 1

    .line 37
    new-instance v0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;

    invoke-direct {v0, p0}, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;-><init>(Lcom/intermedia/user/session/AccessTokenRefresher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;
    .locals 2

    .line 23
    new-instance v0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;

    iget-object v1, p0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;->accessTokenRefresherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/user/session/AccessTokenRefresher;

    invoke-direct {v0, v1}, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;-><init>(Lcom/intermedia/user/session/AccessTokenRefresher;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;->get()Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;

    move-result-object v0

    return-object v0
.end method
