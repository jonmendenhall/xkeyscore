.class final Lcom/google/firebase/database/connection/idl/zzab;
.super Lcom/google/firebase/database/connection/idl/zzx;


# instance fields
.field private synthetic zzmqu:Lcom/google/android/gms/internal/zzebn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebn;->onDisconnect()V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "ZJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbr(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzebn;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/connection/idl/zzak;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "J)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/idl/zzak;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/connection/idl/zzak;->zza(Lcom/google/firebase/database/connection/idl/zzak;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzecd;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbr(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/zzebn;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    return-void
.end method

.method public final zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebn;->zzai(Ljava/util/Map;)V

    return-void
.end method

.method public final zzbuk()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebn;->zzbuk()V

    return-void
.end method

.method public final zzcl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebn;->zzcl(Z)V

    return-void
.end method
