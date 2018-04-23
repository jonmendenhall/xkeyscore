.class final Lcom/google/android/gms/internal/zzefy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebl;
.implements Lcom/google/android/gms/internal/zzefw;


# instance fields
.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private final zzmwm:Lcom/google/android/gms/internal/zzeil;

.field private final zzmwn:Lcom/google/android/gms/internal/zzega;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeil;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefy;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefy;->zzmwn:Lcom/google/android/gms/internal/zzega;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefy;)Lcom/google/android/gms/internal/zzega;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefy;->zzmwn:Lcom/google/android/gms/internal/zzega;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmwn:Lcom/google/android/gms/internal/zzega;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefy;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmwn:Lcom/google/android/gms/internal/zzega;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzega;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzefh;->zzs(Lcom/google/android/gms/internal/zzedk;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Listen at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzejc;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzbuh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbza()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbui()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbza()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelo;->zzn(Lcom/google/android/gms/internal/zzekd;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbuj()Lcom/google/android/gms/internal/zzebb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzmwm:Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbza()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejn;->zzh(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbtz()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzedk;->zzbwg()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzebb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbua()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzebb;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
