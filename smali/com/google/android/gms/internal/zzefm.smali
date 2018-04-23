.class final Lcom/google/android/gms/internal/zzefm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp<",
        "Lcom/google/android/gms/internal/zzefg;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/zzefg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzefg;->zzbwu()Lcom/google/android/gms/internal/zzeil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzefg;->zzbws()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
