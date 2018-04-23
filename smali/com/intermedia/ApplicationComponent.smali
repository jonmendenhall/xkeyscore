.class public interface abstract Lcom/intermedia/ApplicationComponent;
.super Ljava/lang/Object;
.source "ApplicationComponent.java"

# interfaces
.implements Lcom/intermedia/injection/ApplicationGraph;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation

.annotation runtime Ldagger/Component;
    modules = {
        Lcom/intermedia/ExternalApplicationModule;
    }
.end annotation


# virtual methods
.method public abstract getClientEventReporter()Lcom/intermedia/util/analytics/ClientEventReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getGson()Lcom/google/gson/Gson;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getNetworkConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPicasso()Lcom/squareup/picasso/Picasso;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSessionManager()Lcom/intermedia/user/session/SessionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getShowTimeRepository()Lcom/intermedia/game/ShowTimeRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWatchdogFileSupplier()Lcom/intermedia/util/logging/WatchdogFileSupplier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract newUserComponent()Lcom/intermedia/injection/UserComponent$Builder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
