.class public abstract Lcom/google/android/gms/internal/zzchf;
.super Lcom/google/android/gms/internal/zzev;

# interfaces
.implements Lcom/google/android/gms/internal/zzche;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev;-><init>()V

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzchf;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzev;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchf;->zzd(Lcom/google/android/gms/internal/zzcgi;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzchf;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcgi;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;)Z

    move-result p2

    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;)Z

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzcgi;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/zzcgl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchf;->zzb(Lcom/google/android/gms/internal/zzcgl;)V

    goto/16 :goto_1

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/zzcgl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgl;

    sget-object p4, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    goto/16 :goto_1

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchf;->zzc(Lcom/google/android/gms/internal/zzcgi;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzchf;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/zzcha;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcha;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgi;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcgi;Z)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    :pswitch_c
    sget-object p1, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchf;->zzb(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :pswitch_d
    sget-object p1, Lcom/google/android/gms/internal/zzcha;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcha;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :pswitch_f
    sget-object p1, Lcom/google/android/gms/internal/zzcln;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcln;

    sget-object p4, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/zzcha;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcha;

    sget-object p4, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/zzew;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzchf;->zza(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
