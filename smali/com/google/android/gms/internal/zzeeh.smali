.class final Lcom/google/android/gms/internal/zzeeh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefz;


# instance fields
.field final synthetic zzmti:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzedn;->zzc(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzebm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwg()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeih;->zzbyu()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzefw;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzc(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzebm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwg()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeih;->zzbyu()Ljava/util/Map;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzega;->zzbwx()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance v6, Lcom/google/android/gms/internal/zzeei;

    invoke-direct {v6, p0, p4}, Lcom/google/android/gms/internal/zzeei;-><init>(Lcom/google/android/gms/internal/zzeeh;Lcom/google/android/gms/internal/zzefw;)V

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzebl;Ljava/lang/Long;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method
